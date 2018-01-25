package pl.cafeina.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.cafeina.dao.CakeDao;
import pl.cafeina.entity.Cake;

@Component
public class CakeConverter implements Converter<String, Cake>{
    @Autowired
    CakeDao cakeDao;

    public CakeConverter(){
    }

    @Override
    public Cake convert(String source) {
        Cake cake = cakeDao.getCakeById(Long.parseLong(source));
        return  cake;
    }

}
