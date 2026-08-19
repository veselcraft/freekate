.class Lcom/perm/kate/MyStickersActivity$1;
.super Ljava/lang/Object;
.source "MyStickersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MyStickersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MyStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MyStickersActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity$1;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 37
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 38
    iget-object p2, p0, Lcom/perm/kate/MyStickersActivity$1;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {p2}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    const-string p3, "index"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    iget-object p2, p0, Lcom/perm/kate/MyStickersActivity$1;->this$0:Lcom/perm/kate/MyStickersActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 40
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity$1;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
