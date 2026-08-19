.class public abstract Lcom/perm/utils/AnswerParser;
.super Ljava/lang/Object;
.source "AnswerParser.java"


# direct methods
.method public static getAnswer(Lcom/perm/utils/AnswerType;)Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, " \u041f\u0438\u0441\u0430\u0442\u044c \u044d\u0442\u043e \u0440\u0430\u0437\u0440\u0430\u0431\u043e\u0442\u0447\u0438\u043a\u0430\u043c Kate \u043d\u0435\u0442 \u0441\u043c\u044b\u0441\u043b\u0430, \u0443 \u043d\u0430\u0441 \u0432\u0435\u0434\u044c \u043d\u0435\u0442 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043a \u0447\u0443\u0436\u0438\u043c \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430\u043c."

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 98
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0440\u0438\u0432\u044f\u0437\u0430\u0442\u044c \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443 \u043a \u043d\u043e\u0432\u043e\u043c\u0443 \u043d\u043e\u043c\u0435\u0440\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u043c\u043e\u0436\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 \u0441\u0430\u0439\u0442\u0435 vk.com. \u0412 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438 \u0442\u0430\u043a\u043e\u0439 \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438 \u043d\u0435\u0442."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "\u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0443 \u0432\u0430\u0441 \u043d\u0435 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442 \u043e\u043d\u043b\u0430\u0439\u043d \u0434\u0440\u0443\u0437\u0435\u0439 \u043f\u043e\u0442\u043e\u043c\u0443 \u0447\u0442\u043e \u0432\u044b \u0441\u0430\u043c\u0438 \u0432\u044b\u0431\u0440\u0430\u043b\u0438 \u0442\u0430\u043a\u043e\u0439 \u0440\u0435\u0436\u0438\u043c \u043e\u0444\u0444\u043b\u0430\u0439\u043d, \u0432 \u043a\u043e\u0442\u043e\u0440\u043e\u043c \u0432\u0441\u0451 \u0441\u043a\u0440\u044b\u0442\u043e. \u0422\u0430\u043a\u043e\u0439 \u0440\u0435\u0436\u0438\u043c \u0435\u0441\u0442\u044c \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438 VK.IM \u0438 \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0432 \u0432 \u0434\u0440\u0443\u0433\u0438\u0445 \u043d\u0435\u043e\u0444\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u044b\u0445 \u0412\u041a-\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f\u0445."

    return-object p0

    .line 94
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C \u0442\u0430\u043a\u0438\u043c \u0432\u043e\u043f\u0440\u043e\u0441\u043e\u043c \u043d\u0443\u0436\u043d\u043e \u043e\u0431\u0440\u0430\u0449\u0430\u0442\u044c\u0441\u044f \u0432 \u0442\u0435\u0445\u043f\u043e\u0434\u0434\u0435\u0440\u0436\u043a\u0443 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 vk.com/support."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, "\u0415\u0441\u043b\u0438 \u0432\u044b \u0437\u0430\u0431\u044b\u043b\u0438 \u043f\u0430\u0440\u043e\u043b\u044c \u043e\u0442 \u0441\u043a\u0440\u044b\u0442\u044b\u0445 \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432, \u0442\u043e \u043f\u0440\u0438\u0434\u0451\u0442\u0441\u044f \u0443\u0434\u0430\u043b\u0438\u0442\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0438 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0441\u043d\u043e\u0432\u0430. \u0422\u043e\u0433\u0434\u0430 \u043f\u0430\u0440\u043e\u043b\u044c \u0441\u0431\u0440\u043e\u0441\u0438\u0442\u0441\u044f."

    return-object p0

    .line 90
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0441\u0432\u043e\u044e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443 \u043c\u043e\u0436\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 \u0441\u0430\u0439\u0442\u0435 vk.com. \u0415\u0441\u043b\u0438 \u0443 \u0432\u0430\u0441 \u043d\u0435\u0442 \u043a \u043d\u0435\u0439 \u0434\u043e\u0441\u0442\u0443\u043f\u0430, \u0442\u043e \u0435\u0433\u043e \u043f\u0440\u0438\u0434\u0451\u0442\u0441\u044f \u0441\u043d\u0430\u0447\u0430\u043b\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043f\u043e \u0441\u0441\u044b\u043b\u043a\u0435 http://vk.com/restore."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0415\u0441\u043b\u0438 \u0430\u0434\u043c\u0438\u043d\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u043e\u0442\u043c\u0435\u043d\u044f\u0435\u0442 \u0432\u0430\u0448\u0443 \u0437\u0430\u044f\u0432\u043a\u0443 \u043d\u0430 \u0441\u043c\u0435\u043d\u0443 \u0438\u043c\u0435\u043d\u0438, \u0442\u043e \u0441 \u0442\u0430\u043a\u0438\u043c \u0432\u043e\u043f\u0440\u043e\u0441\u043e\u043c \u043d\u0443\u0436\u043d\u043e \u043e\u0431\u0440\u0430\u0449\u0430\u0442\u044c\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0432 \u0442\u0435\u0445\u043f\u043e\u0434\u0434\u0435\u0440\u0436\u043a\u0443 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 vk.com/support."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0435 \u0437\u043d\u0430\u044e \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u043b\u0438 \u044d\u0442\u043e. C \u0442\u0430\u043a\u0438\u043c \u0432\u043e\u043f\u0440\u043e\u0441\u043e\u043c \u043d\u0443\u0436\u043d\u043e \u043e\u0431\u0440\u0430\u0449\u0430\u0442\u044c\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0432 \u0442\u0435\u0445\u043f\u043e\u0434\u0434\u0435\u0440\u0436\u043a\u0443 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 vk.com/support. \u042d\u0442\u0443 \u0441\u0441\u044b\u043b\u043a\u0443 \u043d\u0443\u0436\u043d\u043e \u043e\u0442\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u0432 \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0435."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :pswitch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0412\u0430\u043c \u043d\u0443\u0436\u043d\u043e \u0437\u0430\u0439\u0442\u0438 \u043d\u0430 \u0441\u0430\u0439\u0442 vk.com \u0447\u0442\u043e\u0431\u044b \u0443\u0437\u043d\u0430\u0442\u044c \u043f\u0440\u0438\u0447\u0438\u043d\u0443 \u0438 \u0441\u0440\u043e\u043a \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "\u0412\u043e\u0442 \u043d\u0430\u0448\u0438 \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0430\u0446\u0438\u0438 http://vk.com/pages?oid=-26062647&p=push. \u0414\u043b\u044f \u043d\u0430\u0447\u0430\u043b\u0430 \u043d\u0443\u0436\u043d\u043e \u043e\u0447\u0435\u043d\u044c \u0432\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u044c\u043d\u043e \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043f\u043e \u043a\u0430\u0436\u0434\u043e\u043c\u0443 \u043f\u0443\u043d\u043a\u0442\u0443."

    return-object p0

    :pswitch_9
    const-string p0, "\u0415\u0441\u043b\u0438 \u043d\u0435 \u043c\u043e\u0436\u0435\u0442\u0435 \u0432\u043e\u0439\u0442\u0438 \u043c\u043e\u0436\u0435\u0442\u0435 \u043d\u0430\u0436\u0430\u0442\u044c \"\u041d\u0435 \u043c\u043e\u0433\u0443 \u0432\u043e\u0439\u0442\u0438\". \u0422\u0430\u043c \u0435\u0441\u0442\u044c \u0440\u0435\u0437\u0435\u0440\u0432\u043d\u044b\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438 \u0438 \u043c\u043d\u043e\u0436\u0435\u0441\u0442\u0432\u043e \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0430\u0446\u0438\u0439 \u0447\u0442\u043e \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u043f\u0440\u043e\u0431\u043e\u0432\u0430\u0442\u044c \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u0432 \u0442\u0430\u043a\u043e\u0439 \u0441\u0438\u0442\u0443\u0430\u0446\u0438\u0438."

    return-object p0

    .line 78
    :pswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0434\u043e\u0441\u0442\u0443\u043f \u043c\u043e\u0436\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u0437\u0434\u0435\u0441\u044c http://vk.com/restore. \u042d\u0442\u0443 \u0441\u0441\u044b\u043b\u043a\u0443 \u043d\u0443\u0436\u043d\u043e \u043e\u0442\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u0432 \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0435."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/perm/utils/AnswerType;
    .locals 2

    :try_start_0
    const-string v0, "(\u0437\u0430\u0431[\u044b\u0443\u0438]\u043b[\u0430\u0438]?|\u043d\u0435 (\u0437\u043d\u0430\u044e|\u043f\u043e\u043c\u043d\u044e|\u043c\u043e\u0433\u0443 \u0432\u0441\u043f\u043e\u043c\u043d\u0438\u0442\u044c)|\u043a\u0430\u043a \u0443\u0437\u043d\u0430\u0442\u044c|\u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c|\u043f\u043e\u043c\u0435\u043d\u044f\u0442\u044c)( \u0441\u0432\u043e\u0439)?( \u0441\u0442\u0430\u0440\u044b\u0439)? (\u043f[\u0430\u043e]\u0440\u043e\u043b|\u0434\u043e\u0441\u0442\u0443\u043f \u043a \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0435|\u043b\u043e\u0433\u0438)|\u041d\u0435 \u043c\u043e\u0433\u0443 \u0432\u043e\u0441\u0442\u043e\u043d\u043e\u0432\u0438\u0442\u044c \u0430\u043a\u0430\u0443\u043d\u0442"

    const/4 v1, 0x2

    .line 13
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object p0, Lcom/perm/utils/AnswerType;->FORGOT_PASSWORD:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_0
    const-string v0, "\u043d\u0435( \u043c\u043e\u0433\u0443| \u043c\u043e\u0436\u0443)?( \u043d\u0438\u043a\u0430\u043a)? (\u0432\u043e\u0439\u0442\u0438|\u0437\u0430\u0439\u0442\u0438)|\u043d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 \u043b\u043e\u0433|\u043d\u0435 \u043c\u043e\u0436\u0443 \u0443 \u0432\u0456\u0439\u0442\u0438"

    .line 17
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    sget-object p0, Lcom/perm/utils/AnswerType;->CANT_LOGIN:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_1
    const-string v0, "(\u041f\u0435\u0440\u0435\u0441\u0442\u0430\u043b\u0438 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c|\u041d\u0435 \u0440\u0430\u0431\u043e\u0442\u0430\u044e\u0442|\u041d\u0415 \u041f\u0420\u0418\u0425\u041e\u0414[\u042f\u0438]\u0422|\u043f\u0435\u0440\u0435\u0441\u0442\u0430\u043b[\u0438\u043e] \u043f\u0440\u0438\u0445\u043e\u0434\u0438\u0442\u044c|\u043f\u0435\u0440\u0435\u0441\u0442\u0430\u043b\u0438 \u0437\u0430\u0433\u0440\u0443\u0436\u0430\u0442\u044c\u0441\u044f|\u043d\u0435\u0442)( \u0437\u0432\u0443\u043a)?( \u043f\u0443\u0448)?( \u0432\u0441\u0435)? (push-)?(\u0443\u0432\u0435\u0434\u043e\u043c\u043b|\u043e\u043f\u043e\u0432\u0435\u0449\u0435\u043d\u0438)|\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u0435 \u043e\u043f\u043e\u0432\u0435\u0449\u0430\u0435\u0442|\u0423\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u043d\u0435 \u043f\u0440\u0438\u0445\u043e\u0434\u044f\u0442|\u041a\u0430\u043a \u043f\u043e\u0447\u0438\u043d\u0438\u0442\u044c \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f"

    .line 22
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    sget-object p0, Lcom/perm/utils/AnswerType;->NOTIFICATIONS:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_2
    const-string v0, "\u0440\u0430\u0437\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c( \u043c\u043e[\u044e\u0439])? (\u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443|\u0430\u043a\u043a\u0430\u0443\u043d\u0442)|\u043c\u0435\u043d\u044f (\u0437\u0430\u043c\u043e\u0440\u043e\u0437\u0438\u043b\u0438|\u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043b\u0438)|(\u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043b\u0438|\u0437\u0430\u043c\u043e\u0440\u043e\u0437\u0438\u043b\u0438|\u0437\u0430\u043c\u043e\u0440\u043e\u0437\u0438\u043b\u0430) \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443|\u0432\u0434\u0440\u0443\u0433 \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043b\u0438|\u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443 (\u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043b\u0438|\u0437\u0430\u043c\u043e\u0440\u043e\u0437\u0438\u043b\u0438)|\u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043b\u0430\u0441\u044c \u043c\u043e\u044f \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430|\u043a\u043e\u0433\u0434\u0430 \u043c\u043e\u044e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443 \u0440\u0430\u0437\u043c\u043e\u0440\u043e\u0437\u044f\u0442|\u043a\u0430\u043a \u043c\u043d\u0435 \u0440\u0430\u0437\u043c\u043e\u0440\u043e\u0437\u0438\u0442\u044c"

    .line 27
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    sget-object p0, Lcom/perm/utils/AnswerType;->BLOCKED:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_3
    const-string v0, "\u0432\u0437\u043b\u043e\u043c\u0430\u043d\u0430|\u0432\u0437\u043b\u043e\u043c\u0430\u043b"

    .line 31
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    sget-object p0, Lcom/perm/utils/AnswerType;->BROKEN:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_4
    const-string v0, "\u0443\u0434[\u0430\u043e]\u043b\u0438\u043b\u0430? \u043f\u0435\u0440\u0435\u043f\u0438\u0441\u043a\u0443|\u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u0431\u0435\u0441\u0435\u0434\u044b|(\u0432\u043e\u043e?\u0441\u0441?\u0442[\u0430\u043e]\u043d\u043e\u0432\u0438\u0442[\u044c\u0435]|\u0432\u0435\u0440\u043d\u0438\u0442\u0435)( \u043f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430)?( \u0443\u0434\u0430\u043b[\u0451\u0435]\u043d\u043d(\u0443\u044e|\u044b\u0435))?( \u043c\u043e\u044e)?( \u0432\u0441\u0435)?( \u0441\u043c\u0441)? (\u043f\u0435\u0440\u0435\u043f\u0438\u0441\u043a\u0443|\u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f|\u0434\u0438\u0430\u043b\u043e\u0433)|\u0443\u0434\u0430\u043b\u0451\u043d\u043d\u044b\u0439 \u0434\u0438\u0430\u043b\u043e\u0433|\u0443\u0434\u0430\u043b\u0438\u043b\u0430? (\u0432\u0430\u0436\u043d\u044b\u0439 )?\u0434\u0438\u0430\u043b\u043e\u0433"

    .line 35
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    sget-object p0, Lcom/perm/utils/AnswerType;->MESSAGE_REMOVED:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_5
    const-string v0, "\u043d\u0435\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u043e \u043d\u0430\u043f\u0438\u0441\u0430\u043b\u0430( \u0441\u0432\u043e\u0451)? (\u0444\u0430\u043c\u0438\u043b\u0438\u044e|\u0438\u043c\u044f)|\u043f\u043e\u043c\u0435\u043d\u044f\u0442\u044c\u0441\u044f \u0438\u043c\u044f|(\u043d\u0435 ?\u043c\u043e\u0433\u0443|\u043d\u0435\u043b\u044c\u0437\u044f|\u043d\u0435 \u0434\u0430\u044e\u0442|\u0445\u043e\u0447\u0443|\u0445\u043e\u0442\u0435\u043b\u0430|\u043d\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0430\u044e\u0442) (\u0441|\u0438\u0437|\u043f\u043e)\u043c\u0435\u043d[\u0438\u044f]\u0442\u044c( \u0441\u0432\u043e\u0451)? (\u0444\u0430\u043c\u0438\u043b\u0438\u044e|\u0438\u043c\u044f)|\u0438\u0441\u043f\u0440\u0430\u0432\u0438\u043b \u0444\u0430\u043c\u0438\u043b\u0438\u044f|\u043d\u0435 \u043c\u043e\u0433\u0443 \u0441\u043c\u0435\u043d\u0438\u0442\u044c \u0441\u0432\u043e\u0451 \u0418\u043c\u044f|\u0437\u0430\u044f\u0432\u043a\u0430( \u043d\u0430 \u0441\u043c\u0435\u043d\u0443 (\u0444\u0430\u043c\u0438\u043b\u0438\u0438|\u0438\u043c\u0435\u043d\u0438))? \u043e\u0442\u043a\u043b\u043e\u043d\u0435\u043d\u0430|\u041d\u0435 \u043c\u043e\u0433\u0443 \u043f\u0441\u0435\u0432\u0434\u043e\u043d\u0438\u043c \u0441\u043c\u0435\u043d\u0438\u0442\u044c|\u043f\u043e\u043c\u0435\u043d\u044f\u0439\u0442\u0435 \u0438\u043c\u044f|\u043f\u0440\u0438\u0447\u0438\u043d\u0430 \u043e\u0442\u043a\u0430\u0437\u0430 \u0441\u043c\u0435\u043d\u044b \u0444\u0430\u043c\u0438\u043b\u0438\u0438|\u041f\u043e\u0447\u0435\u043c\u0443 \u043d\u0435 \u043c\u0435\u043d\u044f\u0435\u0442 \u0438\u043c\u044f|\u041a\u0430\u043a \u0438\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u0438\u043c\u044f"

    .line 40
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    sget-object p0, Lcom/perm/utils/AnswerType;->CHANGE_NAME:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_6
    const-string v0, "\u0443\u0434\u0430\u043b\u0438\u0442\u044c \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443|\u0443\u0434\u0430\u043b\u0438\u0442\u044c \u0441\u0432\u043e\u0439 \u0430\u043a\u043a\u0430\u0443\u043d\u0442|\u0437\u0430\u043c\u043e\u0440\u043e\u0437\u0438\u0442\u044c \u043c\u043e\u044e \u0441\u0442\u0430\u0440\u0443\u044e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443|\u0443\u0434\u0430\u043b\u0438\u0442\u044c \u0441\u0442\u0430\u0440\u0443\u044e \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443|\u0443[\u0434\u043b]\u0430\u043b\u0438\u0442\u0435( \u043f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430)? \u043c\u043e[\u0439\u044e] (\u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443|\u0441\u0442\u0430\u0440\u044b\u0439 \u0430\u043a\u043a\u0430\u0443\u043d\u0442)"

    .line 44
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    sget-object p0, Lcom/perm/utils/AnswerType;->REMOVE_ACCOUNT:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_7
    const-string v0, "(\u043d\u0435 \u043f\u043e\u043c\u043d\u044e |\u0437\u0430\u0431\u044b\u043ba? |\u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c )?(\u043f\u0430\u0440\u043e\u043b\u044c|\u043f\u0438\u043d\\-? ?\u043a\u043e\u0434) (\u043e\u0442 |\u0434\u043b\u044f )?\u0441\u043a\u0440\u044b\u0442\u044b\u0445 (\u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432|\u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0439)|\u0437\u0430\u0431\u044b\u043b \u041f\u0438\u043d|\u0417\u0430\u0431\u044b\u043b\u0430 \u043f\u0438\u043d \u043a\u043e\u0434, \u0447\u0442\u043e\u0431\u044b \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0441\u043a\u0440\u044b\u0442\u044b\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f|\u043f\u043e\u0441\u0442\u0430\u0432\u0438\u043b \u043f\u0430\u0440\u043e\u043b\u044c \u043d\u0430 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \u0438 \u0437\u0430\u0431\u044b\u043b"

    .line 48
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 49
    sget-object p0, Lcom/perm/utils/AnswerType;->HIDDEN_DIALOGS_PIN:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_8
    const-string v0, "(\u0443\u0434\u0430\u043b\u0438\u0442[\u044c\u0435]|\u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440(\u043e\u0432\u0430\u0442\u044c|\u0443\u0439\u0442\u0435))( \u043f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430)?( \u0432\u043e\u0442)? ?(\u044d\u0442\u0443|\u044d\u0442\u043e\u0433\u043e|\u043c\u043e\u044e \u0441\u0442\u0430\u0440\u0443\u044e|\u044d\u0442\u043e\u0439)? (\u0441\u0442\u0440\u0430\u043d\u0438\u0447\u043a\u0443|\u0447\u0435\u043b\u043e\u0432\u0435\u043a\u0430|\u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443|\u0444\u0435\u0439\u043a|\u0444\u043e\u0442\u043e)|\u0442\u0430\u043a\u0438 \u0433\u0440\u0443\u043f\u043f\u044b \u043d\u0443\u0436\u043d\u043e \u0443\u0434\u0430\u043b\u044f\u0442\u044c|\u0447\u0435\u043b\u043e\u0432\u0435\u043a \u0440\u0430\u0441\u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u044f\u0435\u0442 \u0440\u0430\u0441\u0441\u044b\u043b\u043a\u0443"

    .line 53
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    sget-object p0, Lcom/perm/utils/AnswerType;->REPORT_PAGE:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_9
    const-string v0, "\u043d\u0435 (\u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442|\u0432\u0438\u0434\u043d\u043e|\u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0430\u0435\u0442\u0441\u044f|\u0432\u0438\u0436\u0443|\u0432\u0438\u0434\u0435\u043d|\u043c\u043e\u0433\u0443 \u0432\u0438\u0434\u0435\u0442\u044c) ?,?(\u043a\u0442\u043e \u0432\u043e \u0441\u043a\u043e\u043a\u043e \u0441\u0438\u0434\u0435\u043b|\u0434\u0440\u0443\u0437\u0435\u0439 \u043e\u043d\u043b\u0430\u0439\u043d|\u043e\u043d\u043b\u0430\u0439\u043d \u0434\u0440\u0443\u0437\u0435\u0439|\u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0435\u0435 \u0432\u0440\u0435\u043c\u044f \u043f\u0440\u0438\u0431\u044b\u0432\u0430\u043d\u0438\u044f|\u043a\u0442\u043e \u043a\u043e\u0433\u0434\u0430 \u0431\u044b\u043b \u043e\u043d\u043b\u0430\u0439\u043d|\u0432\u0440\u0435\u043c\u044f \u043f\u043e\u044f\u0432\u043b\u0435\u043d\u0438\u044f \u0432 \u0441\u0435\u0442\u0438|\u043f\u043e\u0441\u043b\u0435\u0434\u043d\u044e\u044e \u0434\u0430\u0442\u0443|\u043d\u0438\u043a\u043e\u0433\u043e \u043e\u043d\u043b\u0430\u0439\u043d|\u0434\u0440\u0443\u0437\u0435\u0439 \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0430\u0445\u043e\u0434\u044f\u0442\u0441\u044f \u0432 \u0441\u0435\u0442\u0438|\u0441\u0442\u0430\u0442\u0443\u0441 \u0432 \u0441\u0435\u0442\u0438|\u043a\u043e\u0433\u0434\u0430 \u0447\u0435\u043b\u043e\u0432\u0435\u043a \u0431\u044b\u043b \u0432 \u0441\u0435\u0442\u0438)|\u0434\u0440\u0443\u0437\u044c\u044f \u0438 \u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u0438 \"\u043d\u0435 \u0432 \u0441\u0435\u0442\u0438\""

    .line 58
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    sget-object p0, Lcom/perm/utils/AnswerType;->NEW_OFFLINE:Lcom/perm/utils/AnswerType;

    return-object p0

    :cond_a
    const-string v0, "(\u0441\u043c\u0435\u043d\u0438\u043b\u0430?|\u043f\u043e\u043c\u0435\u043d\u044f\u0442\u044c|\u043f\u043e\u0442\u0435\u0440\u044f\u043b\u0430?) \u043d\u043e\u043c\u0435\u0440 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430|\u043f\u0440\u0438\u0432\u044f\u0437\u0430\u0442\u044c \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0443 \u043a \u043d\u043e\u0432\u043e\u043c\u0443 \u043d\u043e\u043c\u0435\u0440\u0443|\u0438\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u043d\u0430 \u043d\u043e\u0432\u044b\u0439 \u043d\u043e\u043c\u0435\u0440 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"

    .line 62
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 63
    sget-object p0, Lcom/perm/utils/AnswerType;->CHANGE_PHONE:Lcom/perm/utils/AnswerType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 70
    :cond_b
    sget-object p0, Lcom/perm/utils/AnswerType;->UNKNOWN:Lcom/perm/utils/AnswerType;

    return-object p0
.end method
