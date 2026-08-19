.class Lcom/perm/kate/PhotoChooserActivity$2;
.super Ljava/lang/Object;
.source "PhotoChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoChooserActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoChooserActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09018d

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    const-class v2, Lcom/perm/kate/PhotoChooserPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    .line 164
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
