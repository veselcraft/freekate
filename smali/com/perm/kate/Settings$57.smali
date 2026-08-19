.class Lcom/perm/kate/Settings$57;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/perm/kate/Settings$57;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .line 1472
    iget-object p1, p0, Lcom/perm/kate/Settings$57;->this$0:Lcom/perm/kate/Settings;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/perm/utils/UpdateChecker;->checkOnThread(Landroid/app/Activity;ZZ)V

    return v0
.end method
