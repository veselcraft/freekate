.class Lcom/perm/kate/VideoMenu$6;
.super Ljava/lang/Thread;
.source "VideoMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoMenu;->DeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$callback_delete:Lcom/perm/kate/session/Callback;

.field final synthetic val$oid:Ljava/lang/Long;

.field final synthetic val$target_id:J

.field final synthetic val$vid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;JLcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoMenu;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$6;->this$0:Lcom/perm/kate/VideoMenu;

    iput-object p2, p0, Lcom/perm/kate/VideoMenu$6;->val$vid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/VideoMenu$6;->val$oid:Ljava/lang/Long;

    iput-wide p4, p0, Lcom/perm/kate/VideoMenu$6;->val$target_id:J

    iput-object p6, p0, Lcom/perm/kate/VideoMenu$6;->val$callback_delete:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 254
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/VideoMenu$6;->val$vid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/VideoMenu$6;->val$oid:Ljava/lang/Long;

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$6;->val$target_id:J

    iget-object v6, p0, Lcom/perm/kate/VideoMenu$6;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/VideoMenu$6;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v7, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->deleteVideo(Ljava/lang/Long;Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 255
    return-void
.end method
