.class Lcom/perm/kate/session/Session$56;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$caption:Ljava/lang/String;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$photos_list:Ljava/lang/String;

.field final synthetic val$server:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/perm/kate/session/Session$56;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$56;->val$server:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$56;->val$photos_list:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$56;->val$aid:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$56;->val$group_id:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$56;->val$hash:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$56;->val$caption:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 781
    iget-object v0, p0, Lcom/perm/kate/session/Session$56;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$56;->val$server:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$56;->val$photos_list:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$56;->val$aid:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$56;->val$group_id:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$56;->val$hash:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$56;->val$caption:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->photosSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
