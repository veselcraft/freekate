.class Lcom/perm/kate/SmilesActivity$SmileAdapter$1;
.super Ljava/lang/Object;
.source "SmilesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SmilesActivity$SmileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SmilesActivity$SmileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SmilesActivity$SmileAdapter;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;->this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "code":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2, v0}, Lcom/perm/utils/SmileHelper;->setRecentSmileAndSave(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;->this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;

    iget-object v2, v2, Lcom/perm/kate/SmilesActivity$SmileAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;->this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;

    iget-object v2, v2, Lcom/perm/kate/SmilesActivity$SmileAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v2, v0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->selected(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
