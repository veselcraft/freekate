.class Lcom/perm/kate/VideoLogic$10;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$10;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 648
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$10;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/VideoLogic$10;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/perm/kate/VideoLogic;->access$900(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
