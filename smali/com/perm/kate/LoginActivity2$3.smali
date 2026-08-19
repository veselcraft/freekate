.class Lcom/perm/kate/LoginActivity2$3;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2;->logIn(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity2;

.field final synthetic val$is_retry:Z

.field final synthetic val$sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2;Ljava/lang/String;Z)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$3;->this$0:Lcom/perm/kate/LoginActivity2;

    iput-object p2, p0, Lcom/perm/kate/LoginActivity2$3;->val$sid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/perm/kate/LoginActivity2$3;->val$is_retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/perm/kate/LoginActivity2$3$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/LoginActivity2$3$1;-><init>(Lcom/perm/kate/LoginActivity2$3;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public failedToDisplay()V
    .locals 0

    return-void
.end method
