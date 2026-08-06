.class public final Lcom/my/target/ads/CustomParams;
.super Lcom/my/target/core/providers/a;
.source "CustomParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/CustomParams$Gender;
    }
.end annotation


# instance fields
.field private emails:[Ljava/lang/String;

.field private icqIds:[Ljava/lang/String;

.field private okIds:[Ljava/lang/String;

.field private vkIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/my/target/core/providers/a;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public final collectData(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final getAge()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 217
    const-string v1, "a"

    invoke-virtual {p0, v1}, Lcom/my/target/ads/CustomParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    if-nez v1, :cond_0

    .line 225
    :goto_0
    return v0

    .line 222
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getCustomParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/my/target/ads/CustomParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->emails:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->emails:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->emails:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 185
    const-string v1, "g"

    invoke-virtual {p0, v1}, Lcom/my/target/ads/CustomParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 193
    :goto_0
    return v0

    .line 190
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getIcqId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->icqIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->icqIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->icqIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIcqIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->icqIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Lcom/my/target/ads/CustomParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMrgsAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "mrgs_app_id"

    invoke-virtual {p0, v0}, Lcom/my/target/ads/CustomParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMrgsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "mrgs_device_id"

    invoke-virtual {p0, v0}, Lcom/my/target/ads/CustomParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMrgsUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "mrgs_user_id"

    invoke-virtual {p0, v0}, Lcom/my/target/ads/CustomParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOkId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->okIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->okIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->okIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOkIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->okIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getVKId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->vkIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->vkIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->vkIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVKIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/my/target/ads/CustomParams;->vkIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final setAge(I)V
    .locals 2

    .prologue
    .line 231
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 232
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lcom/my/target/ads/CustomParams;->removeParam(Ljava/lang/String;)Z

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "a"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final setCustomParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/my/target/ads/CustomParams;->emails:[Ljava/lang/String;

    .line 85
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    return-void
.end method

.method public final setEmails([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/my/target/ads/CustomParams;->emails:[Ljava/lang/String;

    .line 96
    const-string v0, "email"

    invoke-static {p1}, Lcom/my/target/core/utils/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    return-void
.end method

.method public final setGender(I)V
    .locals 2

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to set gender "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " please use 0,1,2 or -1 to remove gender param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const-string v0, "g"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 207
    :pswitch_1
    const-string v0, "g"

    invoke-virtual {p0, v0}, Lcom/my/target/ads/CustomParams;->removeParam(Ljava/lang/String;)Z

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setIcqId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/my/target/ads/CustomParams;->icqIds:[Ljava/lang/String;

    .line 108
    const-string v0, "icq_id"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    return-void
.end method

.method public final setIcqIds([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/my/target/ads/CustomParams;->icqIds:[Ljava/lang/String;

    .line 119
    const-string v0, "icq_id"

    invoke-static {p1}, Lcom/my/target/core/utils/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    return-void
.end method

.method public final setLang(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    const-string v0, "lang"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    return-void
.end method

.method public final setMrgsAppId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    const-string v0, "mrgs_app_id"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    return-void
.end method

.method public final setMrgsId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "mrgs_device_id"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    return-void
.end method

.method public final setMrgsUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const-string v0, "mrgs_user_id"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    return-void
.end method

.method public final setOkId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/my/target/ads/CustomParams;->okIds:[Ljava/lang/String;

    .line 131
    const-string v0, "ok_id"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    return-void
.end method

.method public final setOkIds([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/my/target/ads/CustomParams;->okIds:[Ljava/lang/String;

    .line 142
    const-string v0, "ok_id"

    invoke-static {p1}, Lcom/my/target/core/utils/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    return-void
.end method

.method public final setVKId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/my/target/ads/CustomParams;->vkIds:[Ljava/lang/String;

    .line 154
    const-string v0, "vk_id"

    invoke-virtual {p0, v0, p1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    return-void
.end method

.method public final setVKIds([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/my/target/ads/CustomParams;->vkIds:[Ljava/lang/String;

    .line 165
    const-string v0, "vk_id"

    invoke-static {p1}, Lcom/my/target/core/utils/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/ads/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    return-void
.end method
