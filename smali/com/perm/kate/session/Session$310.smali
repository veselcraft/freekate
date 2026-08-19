.class Lcom/perm/kate/session/Session$310;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$city_id:I


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;I)V
    .locals 0

    .line 3131
    iput-object p1, p0, Lcom/perm/kate/session/Session$310;->this$0:Lcom/perm/kate/session/Session;

    iput p4, p0, Lcom/perm/kate/session/Session$310;->val$city_id:I

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3134
    iget-object v0, p0, Lcom/perm/kate/session/Session$310;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget v1, p0, Lcom/perm/kate/session/Session$310;->val$city_id:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/api/Api;->getUniversities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
