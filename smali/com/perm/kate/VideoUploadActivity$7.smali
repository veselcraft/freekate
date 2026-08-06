.class Lcom/perm/kate/VideoUploadActivity$7;
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
    .param p1, "this$0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$100(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$700(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$800(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoUploadActivity;->access$100(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Privacy;->getIntFromPrivacyValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$800(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$900(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1000(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoUploadActivity;->access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Privacy;->getIntFromPrivacyValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1000(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 215
    :cond_1
    return-void
.end method
