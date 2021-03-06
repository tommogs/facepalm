/*
 * Copyright 2016 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package se.omegapoint.facepalm.infrastructure;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import se.omegapoint.facepalm.domain.repository.DocumentRepository;
import se.omegapoint.facepalm.infrastructure.db.Document;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import java.util.List;

import static java.lang.String.format;
import static java.time.ZoneId.systemDefault;
import static java.util.stream.Collectors.toList;

@Repository
@Transactional
@SuppressWarnings("unchecked")
public class JPADocumentRepository implements DocumentRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<se.omegapoint.facepalm.domain.Document> findAllFor(final String user) {
        System.out.println("SQL Query: " + format("SELECT * FROM DOCUMENTS WHERE USERNAME = '%s'", user));

        final List<Document> documents = entityManager.createNativeQuery(format("SELECT * FROM DOCUMENTS WHERE USERNAME = '%s'", user), Document.class).getResultList();


        return documents.stream()
                .map(a -> new se.omegapoint.facepalm.domain.Document(a.getId(), a.getFilename(), a.getFileSize(), date(a)))
                .collect(toList());
    }

    private LocalDateTime date(final Document d) {
        return d.getDate() != null ? LocalDateTime.ofInstant(d.getDate().toInstant(), systemDefault()) : null;
    }
}
