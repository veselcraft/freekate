.class Lcom/perm/kate/session/Session$42;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$aids:Ljava/util/ArrayList;

.field final synthetic val$album_id:Ljava/lang/Long;

.field final synthetic val$count:I

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$offset:I

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;IILjava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/perm/kate/session/Session$42;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$42;->val$uid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$42;->val$gid:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$42;->val$album_id:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$42;->val$aids:Ljava/util/ArrayList;

    iput p8, p0, Lcom/perm/kate/session/Session$42;->val$count:I

    iput p9, p0, Lcom/perm/kate/session/Session$42;->val$offset:I

    iput-object p10, p0, Lcom/perm/kate/session/Session$42;->val$access_key:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 641
    iget-object v0, p0, Lcom/perm/kate/session/Session$42;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$42;->val$uid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$42;->val$gid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$42;->val$album_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$42;->val$aids:Ljava/util/ArrayList;

    iget v6, p0, Lcom/perm/kate/session/Session$42;->val$count:I

    iget v7, p0, Lcom/perm/kate/session/Session$42;->val$offset:I

    iget-object v8, p0, Lcom/perm/kate/session/Session$42;->val$access_key:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/api/Api;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Collection;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
