package com.webtiphadoan.repository;




import com.webtiphadoan.model.Comment_Model;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface Comment_Repository extends CrudRepository<Comment_Model, Integer> {

    @Modifying
    @Transactional
    @Query(value= "SELECT DISTINCT(o.id), o.`id_news`,o.`id_user`,o.`noidungbinhluan`,o.`thoigian` FROM webcloud.`news` p, webcloud.`binhluan` o WHERE o.`id_news`=?1",  nativeQuery = true)
    List<Comment_Model> ALL_Comment_For_News(int id);
}


