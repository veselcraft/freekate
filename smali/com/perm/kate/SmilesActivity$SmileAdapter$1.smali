.class Lcom/perm/kate/SmilesActivity$SmileAdapter$1;
.super Ljava/lang/Object;
.source "SmilesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SmilesActivity$SmileAdapter;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;->this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/perm/utils/SmileHelper;->setRecentSmileAndSave(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;->this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;

    iget-object v0, v0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;->this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;

    iget-object v0, v0, Lcom/perm/kate/SmilesActivity$SmileAdapter;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v0, p1}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;->selected(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SmilesActivity$SmileAdapter$1;->this$0:Lcom/perm/kate/SmilesActivity$SmileAdapter;

    invoke-static {v0, p1}, Lcom/perm/kate/SmilesActivity$SmileAdapter;->access$000(Lcom/perm/kate/SmilesActivity$SmileAdapter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
