.class Lcom/perm/kate/VideoUploadActivity$3;
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

    .line 118
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$3;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity$3;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
