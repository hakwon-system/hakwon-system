package com.ld.file;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
@Data
@NoArgsConstructor
@Table(name = "report_file")
@Entity
public class FileEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;
    
    private String original_name;
    
    private String save_name;
    
    private String save_path;
    private Long report_id;

    @Builder
    public FileEntity(Long id, String original_name, String save_name, String save_path, Long report_id) {
        this.id = id;
        this.original_name = original_name;
        this.save_name = save_name;
        this.save_path = save_path;
        this.report_id= report_id;
    }

	
}