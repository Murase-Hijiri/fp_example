module foo

contains

    subroutine plus_one(vec, len) bind(C, name="plus_one")
        use, intrinsic :: iso_c_binding, only : c_int, c_double
        implicit none

        real(c_double), intent(inout) :: vec(*)
        integer(c_int), intent(in), value :: len

        block
            integer(c_int) :: loop_r
            do loop_r = 1, len
                vec(loop_r) = vec(loop_r) + 1
            end do
        end block

    end subroutine plus_one

end module foo

