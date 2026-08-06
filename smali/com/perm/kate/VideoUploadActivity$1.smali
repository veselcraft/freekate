.class Lcom/perm/kate/VideoUploadActivity$1;
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
    .param p1, "this$0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$1;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$1;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$000(Lcom/perm/kate/VideoUploadActivity;)V

    .line 92
    return-void
.end method
