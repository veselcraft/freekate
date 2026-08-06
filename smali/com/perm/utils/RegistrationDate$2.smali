.class final Lcom/perm/utils/RegistrationDate$2;
.super Ljava/lang/Object;
.source "RegistrationDate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/RegistrationDate;->displayDialogOnUiThread(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$date:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/perm/utils/RegistrationDate$2;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p2, p0, Lcom/perm/utils/RegistrationDate$2;->val$date:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/perm/utils/RegistrationDate$2;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/utils/RegistrationDate$2;->val$date:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/utils/RegistrationDate;->access$300(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    .line 93
    return-void
.end method
