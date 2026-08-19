.class Lcom/perm/kate/PhotoChooserActivity$3;
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

    .line 174
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 179
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f03f2

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectedImages"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "selected_photos"

    .line 188
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 189
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 190
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
