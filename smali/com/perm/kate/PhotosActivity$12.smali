.class Lcom/perm/kate/PhotosActivity$12;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity;->confirmDownloadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 671
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "key_size_saved_photo"

    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    .line 673
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/PhotosActivity;->access$1100(Lcom/perm/kate/PhotosActivity;I)V

    goto :goto_0

    .line 675
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotosActivity;->access$1200(Lcom/perm/kate/PhotosActivity;)V

    :goto_0
    return-void
.end method
