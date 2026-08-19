.class Lcom/perm/kate/PhotoViewerActrivity$1;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$1;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$1;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$1;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->lat:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$1;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->lon:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$1;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/Helper;->openMap(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
