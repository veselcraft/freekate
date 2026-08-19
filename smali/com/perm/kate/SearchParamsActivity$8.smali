.class Lcom/perm/kate/SearchParamsActivity$8;
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

    .line 403
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$8;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 416
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$8;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$1400(Lcom/perm/kate/SearchParamsActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$8;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/perm/kate/SearchParamsActivity;->access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 407
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$8;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$1200(Lcom/perm/kate/SearchParamsActivity;)V

    .line 408
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$8;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchParamsActivity;->access$1102(Lcom/perm/kate/SearchParamsActivity;Z)Z

    return-void
.end method
