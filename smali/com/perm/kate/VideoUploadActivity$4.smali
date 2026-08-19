.class Lcom/perm/kate/VideoUploadActivity$4;
.super Ljava/lang/Object;
.source "VideoUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoUploadActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$4;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity$4;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0f0301

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/VideoUploadActivity;->access$300(Lcom/perm/kate/VideoUploadActivity;Ljava/util/ArrayList;II)V

    return-void
.end method
