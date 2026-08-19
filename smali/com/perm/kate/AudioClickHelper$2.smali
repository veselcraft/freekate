.class Lcom/perm/kate/AudioClickHelper$2;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Lcom/perm/kate/AudioClickHelperCallback2;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$source:I

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput p2, p0, Lcom/perm/kate/AudioClickHelper$2;->val$source:I

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$2;->val$post_ids:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/AudioClickHelper$2;->val$ad_data:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/AudioClickHelper$2;->val$track_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audiosDownloaded(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V
    .locals 20

    move-object/from16 v0, p0

    .line 76
    iget-object v1, v0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v2, v0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget v10, v0, Lcom/perm/kate/AudioClickHelper$2;->val$source:I

    const-wide/16 v11, 0x0

    iget-object v13, v0, Lcom/perm/kate/AudioClickHelper$2;->val$post_ids:Ljava/lang/String;

    iget-object v14, v0, Lcom/perm/kate/AudioClickHelper$2;->val$ad_data:Ljava/lang/String;

    iget-object v15, v0, Lcom/perm/kate/AudioClickHelper$2;->val$track_code:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v19}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method
