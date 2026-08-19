.class Lcom/perm/kate/session/Session$257;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$category_id:J

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$main_photo_id:J

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$owner_id:J

.field final synthetic val$photo_ids:Ljava/util/ArrayList;

.field final synthetic val$price:Ljava/lang/Double;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/Double;Ljava/util/ArrayList;)V
    .locals 0

    .line 2648
    iput-object p1, p0, Lcom/perm/kate/session/Session$257;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$257;->val$owner_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$257;->val$name:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$257;->val$description:Ljava/lang/String;

    iput-wide p8, p0, Lcom/perm/kate/session/Session$257;->val$category_id:J

    iput-wide p10, p0, Lcom/perm/kate/session/Session$257;->val$main_photo_id:J

    iput-object p12, p0, Lcom/perm/kate/session/Session$257;->val$price:Ljava/lang/Double;

    iput-object p13, p0, Lcom/perm/kate/session/Session$257;->val$photo_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2651
    iget-object v0, p0, Lcom/perm/kate/session/Session$257;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$257;->val$owner_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$257;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$257;->val$description:Ljava/lang/String;

    iget-wide v6, p0, Lcom/perm/kate/session/Session$257;->val$category_id:J

    iget-wide v8, p0, Lcom/perm/kate/session/Session$257;->val$main_photo_id:J

    iget-object v10, p0, Lcom/perm/kate/session/Session$257;->val$price:Ljava/lang/Double;

    iget-object v11, p0, Lcom/perm/kate/session/Session$257;->val$photo_ids:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->addMarket(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/Double;Ljava/util/ArrayList;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
