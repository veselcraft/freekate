.class Lcom/perm/kate/session/Session$107;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$ptag:Lcom/perm/kate/api/PhotoTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lcom/perm/kate/session/Session$107;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$107;->val$ptag:Lcom/perm/kate/api/PhotoTag;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1273
    iget-object v0, p0, Lcom/perm/kate/session/Session$107;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$107;->val$ptag:Lcom/perm/kate/api/PhotoTag;

    iget-object v2, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->putPhotoTag(Lcom/perm/kate/api/PhotoTag;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
