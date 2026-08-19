.class Lcom/perm/kate/session/Session$60;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$photo:Ljava/lang/String;

.field final synthetic val$server:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/perm/kate/session/Session$60;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$60;->val$server:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$60;->val$photo:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$60;->val$hash:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/perm/kate/session/Session$60;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$60;->val$server:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$60;->val$photo:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$60;->val$hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->saveOwnerPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
