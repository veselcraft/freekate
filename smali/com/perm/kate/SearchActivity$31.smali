.class Lcom/perm/kate/SearchActivity$31;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$31;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$31;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$31;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$31;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$7102(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$31;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$7200(Lcom/perm/kate/SearchActivity;)V

    goto :goto_0
.end method
