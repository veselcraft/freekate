.class Lcom/perm/kate/PhotoDetailsActivity$5;
.super Ljava/lang/Object;
.source "PhotoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$5;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 183
    iget-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$5;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoDetailsActivity;->access$500(Lcom/perm/kate/PhotoDetailsActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$5;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoDetailsActivity;->access$600(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/PhotoDetailsActivity$5;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method
