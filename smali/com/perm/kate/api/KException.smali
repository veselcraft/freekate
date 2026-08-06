.class public Lcom/perm/kate/api/KException;
.super Ljava/lang/Exception;
.source "KException.java"


# instance fields
.field public captcha_img:Ljava/lang/String;

.field public captcha_sid:Ljava/lang/String;

.field public error_code:I

.field public redirect_uri:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    iput p1, p0, Lcom/perm/kate/api/KException;->error_code:I

    .line 8
    iput-object p3, p0, Lcom/perm/kate/api/KException;->url:Ljava/lang/String;

    .line 9
    return-void
.end method
