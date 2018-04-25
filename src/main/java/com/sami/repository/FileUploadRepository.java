package com.sami.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sami.model.FileUpload;

@Repository
public interface FileUploadRepository extends JpaRepository<FileUpload, Integer> {
}
