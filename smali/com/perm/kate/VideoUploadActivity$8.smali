.class Lcom/perm/kate/VideoUploadActivity$8;
.super Ljava/lang/Object;
.source "VideoUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoUploadActivity;->setPrivacySpinnersInUI()V
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

    .line 251
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const v2, 0x7f090281

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$800(Lcom/perm/kate/VideoUploadActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$400(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$400(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const v2, 0x7f090282

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoUploadActivity;->access$400(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$8;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$900(Lcom/perm/kate/VideoUploadActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
