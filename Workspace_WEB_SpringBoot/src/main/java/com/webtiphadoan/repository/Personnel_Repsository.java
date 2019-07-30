package com.webtiphadoan.repository;

        import com.webtiphadoan.model.Personnel_Model;
        import org.springframework.data.jpa.repository.Modifying;
        import org.springframework.data.jpa.repository.Query;

        import org.springframework.data.repository.CrudRepository;
        import org.springframework.transaction.annotation.Transactional;

        import java.util.List;

public interface  Personnel_Repsository extends CrudRepository<Personnel_Model, Integer> {
    @Modifying
    @Transactional
    @Query(value= "SELECT * FROM webcloud.nhansu p WHERE  p.name like %?1%",  nativeQuery = true)
    List<Personnel_Model> Find_Personnel(String tennhanvien);


}