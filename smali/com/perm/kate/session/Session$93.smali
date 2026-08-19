.class Lcom/perm/kate/session/Session$93;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$name_case:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/perm/kate/session/Session$93;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$93;->val$uid:Ljava/lang/Long;

    iput p5, p0, Lcom/perm/kate/session/Session$93;->val$offset:I

    iput p6, p0, Lcom/perm/kate/session/Session$93;->val$count:I

    iput-object p7, p0, Lcom/perm/kate/session/Session$93;->val$fields:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$93;->val$name_case:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1147
    iget-object v0, p0, Lcom/perm/kate/session/Session$93;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$93;->val$uid:Ljava/lang/Long;

    iget v3, p0, Lcom/perm/kate/session/Session$93;->val$offset:I

    iget v4, p0, Lcom/perm/kate/session/Session$93;->val$count:I

    iget-object v5, p0, Lcom/perm/kate/session/Session$93;->val$fields:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$93;->val$name_case:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getFollowers(Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
