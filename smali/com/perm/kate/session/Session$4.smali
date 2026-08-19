.class Lcom/perm/kate/session/Session$4;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$country:I

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/perm/kate/session/Session$4;->this$0:Lcom/perm/kate/session/Session;

    iput p4, p0, Lcom/perm/kate/session/Session$4;->val$country:I

    iput-object p5, p0, Lcom/perm/kate/session/Session$4;->val$q:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/perm/kate/session/Session$4;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget v1, p0, Lcom/perm/kate/session/Session$4;->val$country:I

    iget-object v2, p0, Lcom/perm/kate/session/Session$4;->val$q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->getCitiesByCountry(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
