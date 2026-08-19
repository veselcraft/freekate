.class Lcom/perm/kate/Settings$23;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    .line 691
    iput-object p1, p0, Lcom/perm/kate/Settings$23;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 694
    iget-object p1, p0, Lcom/perm/kate/Settings$23;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$700(Lcom/perm/kate/Settings;)V

    const/4 p1, 0x1

    return p1
.end method
