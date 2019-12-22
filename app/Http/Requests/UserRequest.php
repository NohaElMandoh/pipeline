<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {

        return [
            'name'     => ['required', 'string', 'max:255'],
            'email'    => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'phone'    => ['required'],
            'job_title'    => ['required'],
            'type'    => ['required'],

        ];
    }

    public function attributes()
    {
        return [
            'name'     => "name",
            'email'    => "email",
            'password' => "password",
            'phone'    => "phone",
            'job_title'    =>  'job_title',
            'type'    =>  'type',


        ];
    }
}
