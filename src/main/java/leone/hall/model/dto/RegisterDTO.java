package leone.hall.model.dto;

import leone.hall.enums.UserRole;

public record RegisterDTO(String name, String password, UserRole role) {
}
