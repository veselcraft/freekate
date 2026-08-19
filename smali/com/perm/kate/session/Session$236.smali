.class Lcom/perm/kate/session/Session$236;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$change_password_hash:Ljava/lang/String;

.field final synthetic val$new_password:Ljava/lang/String;

.field final synthetic val$old_password:Ljava/lang/String;

.field final synthetic val$restore_sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2457
    iput-object p1, p0, Lcom/perm/kate/session/Session$236;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$236;->val$new_password:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$236;->val$old_password:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$236;->val$restore_sid:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$236;->val$change_password_hash:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2460
    iget-object v0, p0, Lcom/perm/kate/session/Session$236;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$236;->val$new_password:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$236;->val$old_password:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$236;->val$restore_sid:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$236;->val$change_password_hash:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
