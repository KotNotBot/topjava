package ru.javawebinar.topjava;

import static org.assertj.core.api.Assertions.assertThat;

import ru.javawebinar.topjava.model.Meal;

import java.time.LocalDateTime;
import java.time.Month;

import static ru.javawebinar.topjava.model.AbstractBaseEntity.START_SEQ;

public class MealTestData {
    public static final Meal userMeal1 = new Meal(START_SEQ + 3, LocalDateTime.of(2025, Month.FEBRUARY, 23, 9, 0),
            "breakfast", 500);
    public static final Meal userMeal2 = new Meal(START_SEQ + 4, LocalDateTime.of(2025, Month.FEBRUARY, 23, 13, 0),
            "lunch", 700);
    public static final Meal userMeal3 = new Meal(START_SEQ + 5, LocalDateTime.of(2023, Month.FEBRUARY, 23, 16, 0),
            "coffee", 100);
    public static final Meal userMeal4 = new Meal(START_SEQ + 6, LocalDateTime.of(2023, Month.FEBRUARY, 23, 19, 0),
            "dinner", 550);
    public static final Meal userMeal5 = new Meal(START_SEQ + 7, LocalDateTime.of(2023, Month.FEBRUARY, 24, 9, 0),
            "breakfast", 450);
    public static final Meal userMeal6 = new Meal(START_SEQ + 8, LocalDateTime.of(2023, Month.FEBRUARY, 24, 13, 0),
            "lunch", 650);
    public static final Meal userMeal7 = new Meal(START_SEQ + 9, LocalDateTime.of(2023, Month.FEBRUARY, 24, 19, 0),
            "dinner", 500);
    public static final Meal adminMeal1 = new Meal(START_SEQ + 10, LocalDateTime.of(2023, Month.FEBRUARY, 23, 9, 0),
            "breakfast", 300);
    public static final Meal adminMeal2 = new Meal(START_SEQ + 11, LocalDateTime.of(2023, Month.FEBRUARY, 23, 13, 0),
            "lunch", 600);
    public static final Meal adminMeal3 = new Meal(START_SEQ + 12, LocalDateTime.of(2023, Month.FEBRUARY, 23, 19, 0),
            "dinner", 1000);
    public static final Meal adminMeal4 = new Meal(START_SEQ + 13, LocalDateTime.of(2023, Month.FEBRUARY, 24, 9, 0),
            "breakfast", 350);
    public static final Meal adminMeal5 = new Meal(START_SEQ + 14, LocalDateTime.of(2023, Month.FEBRUARY, 24, 13, 0),
            "lunch", 650);
    public static final Meal adminMeal6 = new Meal(START_SEQ + 15, LocalDateTime.of(2023, Month.FEBRUARY, 24, 19, 0),
            "dinner", 950);
    public static final int NOT_FOUND = 10;

    public static Meal getNew() {
        return new Meal(null, LocalDateTime.of(2023, Month.FEBRUARY, 21, 10, 0, 0), "New meal", 1000);
    }

    public static Meal getUpdated() {
        Meal updated = new Meal(adminMeal5.getId(), adminMeal5.getDateTime(), adminMeal5.getDescription(), adminMeal5.getCalories());
        updated.setDescription("Updated meal description");
        updated.setCalories(500);
        updated.setDateTime(LocalDateTime.of(2023, Month.MARCH, 22, 0, 0));
        return updated;
    }

    public static void assertMatch(Meal actual, Meal expected) {
        assertThat(actual).usingRecursiveComparison().isEqualTo(expected);
    }

    public static void assertMatch(Iterable<Meal> actual, Iterable<Meal> expected) {
        assertThat(actual).usingRecursiveComparison().isEqualTo(expected);
    }
}
