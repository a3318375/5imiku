package com.yuxh.blog.model;

public class TypeInfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column type_info.type_id
     *
     * @mbggenerated Tue Mar 21 17:41:07 CST 2017
     */
    private Integer typeId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column type_info.type_name
     *
     * @mbggenerated Tue Mar 21 17:41:07 CST 2017
     */
    private String typeName;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column type_info.type_id
     *
     * @return the value of type_info.type_id
     *
     * @mbggenerated Tue Mar 21 17:41:07 CST 2017
     */
    public Integer getTypeId() {
        return typeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column type_info.type_id
     *
     * @param typeId the value for type_info.type_id
     *
     * @mbggenerated Tue Mar 21 17:41:07 CST 2017
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column type_info.type_name
     *
     * @return the value of type_info.type_name
     *
     * @mbggenerated Tue Mar 21 17:41:07 CST 2017
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column type_info.type_name
     *
     * @param typeName the value for type_info.type_name
     *
     * @mbggenerated Tue Mar 21 17:41:07 CST 2017
     */
    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }
}