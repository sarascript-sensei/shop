<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AboutUsRequest extends FormRequest
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
        $rules = [
            'title1' => 'required|min:5',
            'title2' => 'required|min:5',
        ];

        if ($this->route()->named('aboutUs.update')) {
            $rules['title1'] .= ',' . $this->route()->parameter('aboutUs')->id;
        }

        return $rules;
    }
}
