.class final Lcom/perm/kate/VideoLogic$6;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic;->showInstructionsOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$video_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$6;->val$video_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$6;->val$video_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoLogic;->showInstructions(Landroid/app/Activity;Ljava/lang/String;)V

    .line 351
    return-void
.end method
