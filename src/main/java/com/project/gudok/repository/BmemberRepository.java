package com.project.gudok.repository;

import com.project.gudok.entity.BMember;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BmemberRepository extends JpaRepository<BMember, String> {
}
