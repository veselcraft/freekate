.class Lcom/perm/kate/SearchParamsActivity$9;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1100(Lcom/perm/kate/SearchParamsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$402(Lcom/perm/kate/SearchParamsActivity;Z)Z

    .line 434
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1500(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$500(Lcom/perm/kate/SearchParamsActivity;I)V

    return-void
.end method
