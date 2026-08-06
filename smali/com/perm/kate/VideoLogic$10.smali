.class final Lcom/perm/kate/VideoLogic$10;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic;->showInstructions(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$10;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$10;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$10;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoLogic;->access$700(Ljava/lang/String;Landroid/app/Activity;)V

    .line 543
    return-void
.end method
