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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoChooserActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v5}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 160
    .local v1, "id":Ljava/lang/Integer;
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 161
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v5}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    .line 164
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 165
    iget-object v5, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-virtual {v5}, Lcom/perm/kate/PhotoChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070385

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 174
    :goto_1
    return-void

    .line 167
    :cond_1
    const-string v5, "SelectedImages"

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "selected_photos"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 170
    iget-object v5, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v2}, Lcom/perm/kate/PhotoChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object v5, p0, Lcom/perm/kate/PhotoChooserActivity$2;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-virtual {v5}, Lcom/perm/kate/PhotoChooserActivity;->finish()V

    goto :goto_1
.end method
