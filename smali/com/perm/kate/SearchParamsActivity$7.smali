.class Lcom/perm/kate/SearchParamsActivity$7;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .param p1, "this$0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$1200(Lcom/perm/kate/SearchParamsActivity;)V

    .line 371
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 366
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 362
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$7;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0, v2}, Lcom/perm/kate/SearchParamsActivity;->access$1102(Lcom/perm/kate/SearchParamsActivity;Z)Z

    .line 363
    return-void
.end method
