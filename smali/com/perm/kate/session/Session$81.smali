.class Lcom/perm/kate/session/Session$81;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$adult:Ljava/lang/Integer;

.field final synthetic val$count:Ljava/lang/Long;

.field final synthetic val$filters:Ljava/lang/String;

.field final synthetic val$hd:Ljava/lang/Integer;

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$q:Ljava/lang/String;

.field final synthetic val$sort:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/perm/kate/session/Session$81;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$81;->val$q:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$81;->val$sort:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/perm/kate/session/Session$81;->val$hd:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/perm/kate/session/Session$81;->val$count:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$81;->val$offset:Ljava/lang/Long;

    iput-object p9, p0, Lcom/perm/kate/session/Session$81;->val$adult:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/perm/kate/session/Session$81;->val$filters:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1023
    iget-object v0, p0, Lcom/perm/kate/session/Session$81;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$81;->val$q:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$81;->val$sort:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/perm/kate/session/Session$81;->val$hd:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/perm/kate/session/Session$81;->val$count:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$81;->val$offset:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/session/Session$81;->val$adult:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/perm/kate/session/Session$81;->val$filters:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
