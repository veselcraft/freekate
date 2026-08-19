.class Lcom/perm/kate/session/Session$258;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$category_id:J

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$item_id:J

.field final synthetic val$main_photo_id:Ljava/lang/Long;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$owner_id:J

.field final synthetic val$photo_ids:Ljava/util/ArrayList;

.field final synthetic val$price:Ljava/lang/Double;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Double;Ljava/util/ArrayList;)V
    .locals 0

    .line 2657
    iput-object p1, p0, Lcom/perm/kate/session/Session$258;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$258;->val$owner_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$258;->val$item_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$258;->val$name:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$258;->val$description:Ljava/lang/String;

    iput-wide p10, p0, Lcom/perm/kate/session/Session$258;->val$category_id:J

    iput-object p12, p0, Lcom/perm/kate/session/Session$258;->val$main_photo_id:Ljava/lang/Long;

    iput-object p13, p0, Lcom/perm/kate/session/Session$258;->val$price:Ljava/lang/Double;

    iput-object p14, p0, Lcom/perm/kate/session/Session$258;->val$photo_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2660
    iget-object v0, p0, Lcom/perm/kate/session/Session$258;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$258;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$258;->val$item_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$258;->val$name:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$258;->val$description:Ljava/lang/String;

    iget-wide v8, p0, Lcom/perm/kate/session/Session$258;->val$category_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/session/Session$258;->val$main_photo_id:Ljava/lang/Long;

    iget-object v10, p0, Lcom/perm/kate/session/Session$258;->val$price:Ljava/lang/Double;

    iget-object v11, p0, Lcom/perm/kate/session/Session$258;->val$photo_ids:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->editMarket(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Ljava/util/ArrayList;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
