(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "printf" (func $printf (param i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 12) "\00\00\00\00")
 (data (i32.const 16) "version %d\n\00")
 (data (i32.const 32) "hello world...\n\00")
 (data (i32.const 48) "\05\00\00\00\07\00\00\00\t\00\00\00\03\00\00\00G\00\00\00\n\00\00\00\n\00\00\00\0c\00\00\00\04\00\00\00\0c\00\00\00\02\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\0f\00\00\00\10\00\00\00")
 (export "memory" (memory $0))
 (export "version" (func $version))
 (export "main" (func $main))
 (export "eeppromX" (func $eeppromX))
 (export "encodeX" (func $encodeX))
 (export "min" (func $min))
 (export "power" (func $power))
 (export "add" (func $add))
 (export "ram3d" (func $ram3d))
 (export "scores" (func $scores))
 (export "floatEmulator" (func $floatEmulator))
 (func $version (; 1 ;) (result i32)
  (i32.const 0)
 )
 (func $main (; 2 ;) (result i32)
  (local $0 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store
   (get_local $0)
   (i32.const 0)
  )
  (drop
   (call $printf
    (i32.const 16)
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.const 0)
 )
 (func $eeppromX (; 3 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const -1)
      )
     )
     (i32.const 14)
    )
   )
   (return
    (i32.load8_s
     (i32.add
      (get_local $1)
      (i32.const 32)
     )
    )
   )
  )
  (select
   (i32.const 0)
   (i32.const 15)
   (get_local $0)
  )
 )
 (func $encodeX (; 4 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const -1)
  )
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (get_local $0)
     (i32.const 15)
    )
   )
   (set_local $1
    (i32.load
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 2)
      )
      (i32.const 48)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $min (; 5 ;) (param $0 i32) (param $1 i32) (result i32)
  (select
   (get_local $1)
   (get_local $0)
   (i32.lt_s
    (get_local $1)
    (get_local $0)
   )
  )
 )
 (func $power (; 6 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $1)
     (i32.const 1)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.ne
      (get_local $1)
      (i32.const 1)
     )
    )
    (return
     (get_local $0)
    )
   )
   (set_local $2
    (i32.add
     (get_local $1)
     (i32.const -1)
    )
   )
   (set_local $1
    (i32.const 0)
   )
   (set_local $3
    (get_local $0)
   )
   (loop $label$2
    (set_local $3
     (i32.mul
      (get_local $3)
      (get_local $0)
     )
    )
    (br_if $label$2
     (i32.lt_s
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (get_local $2)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $add (; 7 ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $1)
   (get_local $0)
  )
 )
 (func $ram3d (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.gt_u
      (tee_local $1
       (i32.add
        (tee_local $0
         (i32.add
          (i32.add
           (i32.shl
            (get_local $1)
            (i32.const 3)
           )
           (get_local $0)
          )
          (i32.shl
           (get_local $2)
           (i32.const 6)
          )
         )
        )
        (i32.const -3)
       )
      )
      (i32.const 511)
     )
    )
    (set_local $0
     (i32.add
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
      (i32.const 112)
     )
    )
    (br_if $label$0
     (i32.eqz
      (get_local $3)
     )
    )
    (i32.store
     (get_local $0)
     (get_local $4)
    )
    (return
     (get_local $4)
    )
   )
   (return
    (i32.shl
     (i32.lt_u
      (get_local $0)
      (i32.const 3)
     )
     (i32.const 3)
    )
   )
  )
  (i32.load
   (get_local $0)
  )
 )
 (func $scores (; 9 ;) (param $0 i32) (result i32)
  (i32.store offset=12
   (i32.const 0)
   (tee_local $0
    (i32.add
     (i32.load offset=12
      (i32.const 0)
     )
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $floatEmulator (; 10 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ne
      (get_local $2)
      (i32.const 3)
     )
    )
    (set_local $1
     (i32.div_s
      (get_local $0)
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (set_local $1
    (select
     (i32.mul
      (get_local $1)
      (get_local $0)
     )
     (select
      (i32.sub
       (get_local $0)
       (get_local $1)
      )
      (select
       (i32.const 0)
       (i32.add
        (get_local $1)
        (get_local $0)
       )
       (get_local $2)
      )
      (i32.eq
       (get_local $2)
       (i32.const 1)
      )
     )
     (i32.eq
      (get_local $2)
      (i32.const 2)
     )
    )
   )
  )
  (select
   (i32.div_s
    (get_local $0)
    (i32.const 1000)
   )
   (select
    (i32.mul
     (get_local $0)
     (i32.const 1000)
    )
    (get_local $1)
    (i32.eq
     (get_local $2)
     (i32.const 4)
    )
   )
   (i32.eq
    (get_local $2)
    (i32.const 5)
   )
  )
 )
)
