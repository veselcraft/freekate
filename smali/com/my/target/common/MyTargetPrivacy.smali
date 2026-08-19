.class public abstract Lcom/my/target/common/MyTargetPrivacy;
.super Ljava/lang/Object;
.source "MyTargetPrivacy.java"


# static fields
.field private static userAgeRestricted:Z

.field private static userConsent:Ljava/lang/Boolean;


# direct methods
.method public static isConsentSpecified()Z
    .locals 1

    .line 17
    sget-object v0, Lcom/my/target/common/MyTargetPrivacy;->userConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUserAgeRestricted()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/my/target/common/MyTargetPrivacy;->userAgeRestricted:Z

    return v0
.end method

.method public static isUserConsent()Z
    .locals 1

    .line 12
    sget-object v0, Lcom/my/target/common/MyTargetPrivacy;->userConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
