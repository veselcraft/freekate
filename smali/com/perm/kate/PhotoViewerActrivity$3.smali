.class Lcom/perm/kate/PhotoViewerActrivity$3;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
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

    .line 285
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$3;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$3;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$100(Lcom/perm/kate/PhotoViewerActrivity;I)V

    return-void
.end method
