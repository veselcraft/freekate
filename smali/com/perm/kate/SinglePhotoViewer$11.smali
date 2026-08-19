.class Lcom/perm/kate/SinglePhotoViewer$11;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->showPhotoTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$11;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 657
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$11;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    :cond_0
    return-void
.end method
