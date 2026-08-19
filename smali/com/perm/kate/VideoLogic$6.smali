.class Lcom/perm/kate/VideoLogic$6;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$video_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$6;->val$video_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$6;->val$video_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoLogic;->showInstructions(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
