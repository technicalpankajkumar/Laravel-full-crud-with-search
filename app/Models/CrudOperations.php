<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CrudOperations extends Model
{
    use HasFactory;
    protected $fillable=[
            'first_name',
            'last_name',
            'email',
            'contact',
            'gender',
            'hobbies',
            'address',
            'country',
            'profile'
    ];

    //Mutator is here

    public function setEmailAttribute($value)
    {
    $this->attributes['email']=Str::of($value)->trim()->lower();
    }

    public function setHobbiesAttribute($value)
    {
    $this->attributes['hobbies']=implode(',',$value);
    }

    //relationship  in country table
    public function getCountry()
    {
    return $this->belongsTo(Country::class,'country','id');
    }

    //show page accessor
    public function getHobbiesArrAttribute(){
        return explode(',',$this->hobbies);
    }
}